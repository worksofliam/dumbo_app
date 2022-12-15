**free

ctl-opt dftactgrp(*no);

dcl-pi P1801;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1594.rpgleinc'
/copy 'qrpgleref/P737.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'

dcl-ds T385 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T385 FROM T385 LIMIT 1;

theCharVar = 'Hello from P1801';
dsply theCharVar;
P1594();
P737();
P362();
return;