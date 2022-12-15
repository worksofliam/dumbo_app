**free

ctl-opt dftactgrp(*no);

dcl-pi P307;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'

dcl-ds T1334 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1334 FROM T1334 LIMIT 1;

theCharVar = 'Hello from P307';
dsply theCharVar;
P76();
P41();
P60();
return;