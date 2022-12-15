**free

ctl-opt dftactgrp(*no);

dcl-pi P5427;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4520.rpgleinc'
/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P2763.rpgleinc'

dcl-ds T1334 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1334 FROM T1334 LIMIT 1;

theCharVar = 'Hello from P5427';
dsply theCharVar;
P4520();
P232();
P2763();
return;