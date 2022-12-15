**free

ctl-opt dftactgrp(*no);

dcl-pi P1334;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'

dcl-ds theTable extname('T698') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T698 LIMIT 1;

theCharVar = 'Hello from P1334';
dsply theCharVar;
P59();
P557();
P354();
return;