**free

ctl-opt dftactgrp(*no);

dcl-pi P5119;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2720.rpgleinc'
/copy 'qrpgleref/P5067.rpgleinc'
/copy 'qrpgleref/P1549.rpgleinc'

dcl-ds T751 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T751 FROM T751 LIMIT 1;

theCharVar = 'Hello from P5119';
dsply theCharVar;
P2720();
P5067();
P1549();
return;