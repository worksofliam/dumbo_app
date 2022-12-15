**free

ctl-opt dftactgrp(*no);

dcl-pi P535;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P505.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P227.rpgleinc'

dcl-ds T58 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T58 FROM T58 LIMIT 1;

theCharVar = 'Hello from P535';
dsply theCharVar;
P505();
P226();
P227();
return;