**free

ctl-opt dftactgrp(*no);

dcl-pi P1361;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1334.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P410.rpgleinc'

dcl-ds theTable extname('T525') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T525 LIMIT 1;

theCharVar = 'Hello from P1361';
dsply theCharVar;
P1334();
P174();
P410();
return;