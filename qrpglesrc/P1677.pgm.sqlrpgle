**free

ctl-opt dftactgrp(*no);

dcl-pi P1677;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'

dcl-ds theTable extname('T117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T117 LIMIT 1;

theCharVar = 'Hello from P1677';
dsply theCharVar;
P90();
P118();
P34();
return;