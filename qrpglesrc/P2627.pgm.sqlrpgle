**free

ctl-opt dftactgrp(*no);

dcl-pi P2627;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P854.rpgleinc'
/copy 'qrpgleref/P638.rpgleinc'
/copy 'qrpgleref/P732.rpgleinc'

dcl-ds T342 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T342 FROM T342 LIMIT 1;

theCharVar = 'Hello from P2627';
dsply theCharVar;
P854();
P638();
P732();
return;