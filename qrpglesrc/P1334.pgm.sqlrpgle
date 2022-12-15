**free

ctl-opt dftactgrp(*no);

dcl-pi P1334;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1102.rpgleinc'
/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P1012.rpgleinc'

dcl-ds theTable extname('T311') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T311 LIMIT 1;

theCharVar = 'Hello from P1334';
dsply theCharVar;
P1102();
P332();
P1012();
return;