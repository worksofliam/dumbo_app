**free

ctl-opt dftactgrp(*no);

dcl-pi P2760;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2148.rpgleinc'
/copy 'qrpgleref/P2199.rpgleinc'
/copy 'qrpgleref/P765.rpgleinc'

dcl-ds T692 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T692 FROM T692 LIMIT 1;

theCharVar = 'Hello from P2760';
dsply theCharVar;
P2148();
P2199();
P765();
return;