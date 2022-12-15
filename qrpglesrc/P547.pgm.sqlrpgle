**free

ctl-opt dftactgrp(*no);

dcl-pi P547;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P368.rpgleinc'
/copy 'qrpgleref/P537.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'

dcl-ds T467 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T467 FROM T467 LIMIT 1;

theCharVar = 'Hello from P547';
dsply theCharVar;
P368();
P537();
P327();
return;