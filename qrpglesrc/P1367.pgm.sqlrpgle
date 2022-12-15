**free

ctl-opt dftactgrp(*no);

dcl-pi P1367;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P1179.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'

dcl-ds theTable extname('T438') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T438 LIMIT 1;

theCharVar = 'Hello from P1367';
dsply theCharVar;
P270();
P1179();
P324();
return;