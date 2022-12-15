**free

ctl-opt dftactgrp(*no);

dcl-pi P3679;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3617.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P814.rpgleinc'

dcl-ds T27 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T27 FROM T27 LIMIT 1;

theCharVar = 'Hello from P3679';
dsply theCharVar;
P3617();
P280();
P814();
return;