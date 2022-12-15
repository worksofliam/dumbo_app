**free

ctl-opt dftactgrp(*no);

dcl-pi P1115;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P341.rpgleinc'
/copy 'qrpgleref/P507.rpgleinc'
/copy 'qrpgleref/P719.rpgleinc'

dcl-ds theTable extname('T245') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T245 LIMIT 1;

theCharVar = 'Hello from P1115';
dsply theCharVar;
P341();
P507();
P719();
return;