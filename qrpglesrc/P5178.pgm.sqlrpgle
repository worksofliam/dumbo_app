**free

ctl-opt dftactgrp(*no);

dcl-pi P5178;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3702.rpgleinc'
/copy 'qrpgleref/P3427.rpgleinc'
/copy 'qrpgleref/P1559.rpgleinc'

dcl-ds T577 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T577 FROM T577 LIMIT 1;

theCharVar = 'Hello from P5178';
dsply theCharVar;
P3702();
P3427();
P1559();
return;