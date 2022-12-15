**free

ctl-opt dftactgrp(*no);

dcl-pi P2525;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P730.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'
/copy 'qrpgleref/P1547.rpgleinc'

dcl-ds T1142 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1142 FROM T1142 LIMIT 1;

theCharVar = 'Hello from P2525';
dsply theCharVar;
P730();
P697();
P1547();
return;