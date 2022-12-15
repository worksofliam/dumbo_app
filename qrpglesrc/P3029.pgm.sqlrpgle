**free

ctl-opt dftactgrp(*no);

dcl-pi P3029;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1451.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'
/copy 'qrpgleref/P1318.rpgleinc'

dcl-ds theTable extname('T997') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T997 LIMIT 1;

theCharVar = 'Hello from P3029';
dsply theCharVar;
P1451();
P563();
P1318();
return;