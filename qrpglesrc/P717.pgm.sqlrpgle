**free

ctl-opt dftactgrp(*no);

dcl-pi P717;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P543.rpgleinc'
/copy 'qrpgleref/P594.rpgleinc'
/copy 'qrpgleref/P690.rpgleinc'

dcl-ds T76 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T76 FROM T76 LIMIT 1;

theCharVar = 'Hello from P717';
dsply theCharVar;
P543();
P594();
P690();
return;