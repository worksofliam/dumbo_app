**free

ctl-opt dftactgrp(*no);

dcl-pi P1219;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P739.rpgleinc'
/copy 'qrpgleref/P542.rpgleinc'
/copy 'qrpgleref/P333.rpgleinc'

dcl-ds theTable extname('T1514') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1514 LIMIT 1;

theCharVar = 'Hello from P1219';
dsply theCharVar;
P739();
P542();
P333();
return;