**free

ctl-opt dftactgrp(*no);

dcl-pi P2849;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1865.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P2316.rpgleinc'

dcl-ds T526 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T526 FROM T526 LIMIT 1;

theCharVar = 'Hello from P2849';
dsply theCharVar;
P1865();
P385();
P2316();
return;