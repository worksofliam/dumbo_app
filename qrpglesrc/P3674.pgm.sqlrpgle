**free

ctl-opt dftactgrp(*no);

dcl-pi P3674;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2252.rpgleinc'
/copy 'qrpgleref/P1588.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'

dcl-ds theTable extname('T1334') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1334 LIMIT 1;

theCharVar = 'Hello from P3674';
dsply theCharVar;
P2252();
P1588();
P150();
return;