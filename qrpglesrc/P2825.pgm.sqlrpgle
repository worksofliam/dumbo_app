**free

ctl-opt dftactgrp(*no);

dcl-pi P2825;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1193.rpgleinc'
/copy 'qrpgleref/P1334.rpgleinc'
/copy 'qrpgleref/P2786.rpgleinc'

dcl-ds theTable extname('T1237') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1237 LIMIT 1;

theCharVar = 'Hello from P2825';
dsply theCharVar;
P1193();
P1334();
P2786();
return;