**free

ctl-opt dftactgrp(*no);

dcl-pi P374;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P351.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'

dcl-ds T1416 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1416 FROM T1416 LIMIT 1;

theCharVar = 'Hello from P374';
dsply theCharVar;
P351();
P246();
P255();
return;