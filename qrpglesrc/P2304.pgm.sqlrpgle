**free

ctl-opt dftactgrp(*no);

dcl-pi P2304;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1251.rpgleinc'
/copy 'qrpgleref/P1850.rpgleinc'
/copy 'qrpgleref/P766.rpgleinc'

dcl-ds theTable extname('T361') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T361 LIMIT 1;

theCharVar = 'Hello from P2304';
dsply theCharVar;
P1251();
P1850();
P766();
return;