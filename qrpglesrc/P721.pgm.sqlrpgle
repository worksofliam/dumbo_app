**free

ctl-opt dftactgrp(*no);

dcl-pi P721;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'

dcl-ds T20 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T20 FROM T20 LIMIT 1;

theCharVar = 'Hello from P721';
dsply theCharVar;
P280();
P652();
P337();
return;