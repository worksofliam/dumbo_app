**free

ctl-opt dftactgrp(*no);

dcl-pi P1074;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P451.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P1006.rpgleinc'

dcl-ds theTable extname('T1264') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1264 LIMIT 1;

theCharVar = 'Hello from P1074';
dsply theCharVar;
P451();
P127();
P1006();
return;