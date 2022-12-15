**free

ctl-opt dftactgrp(*no);

dcl-pi P1149;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P898.rpgleinc'
/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'

dcl-ds T140 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T140 FROM T140 LIMIT 1;

theCharVar = 'Hello from P1149';
dsply theCharVar;
P898();
P284();
P316();
return;