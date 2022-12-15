**free

ctl-opt dftactgrp(*no);

dcl-pi P914;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P425.rpgleinc'
/copy 'qrpgleref/P835.rpgleinc'
/copy 'qrpgleref/P575.rpgleinc'

dcl-ds T1665 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1665 FROM T1665 LIMIT 1;

theCharVar = 'Hello from P914';
dsply theCharVar;
P425();
P835();
P575();
return;