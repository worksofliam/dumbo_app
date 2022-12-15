**free

ctl-opt dftactgrp(*no);

dcl-pi P762;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P702.rpgleinc'
/copy 'qrpgleref/P333.rpgleinc'

dcl-ds T273 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T273 FROM T273 LIMIT 1;

theCharVar = 'Hello from P762';
dsply theCharVar;
P234();
P702();
P333();
return;