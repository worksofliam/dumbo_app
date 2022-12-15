**free

ctl-opt dftactgrp(*no);

dcl-pi P3196;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P834.rpgleinc'
/copy 'qrpgleref/P1906.rpgleinc'

dcl-ds T729 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T729 FROM T729 LIMIT 1;

theCharVar = 'Hello from P3196';
dsply theCharVar;
P310();
P834();
P1906();
return;