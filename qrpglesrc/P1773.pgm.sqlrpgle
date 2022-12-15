**free

ctl-opt dftactgrp(*no);

dcl-pi P1773;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1324.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P570.rpgleinc'

dcl-ds T1001 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1001 FROM T1001 LIMIT 1;

theCharVar = 'Hello from P1773';
dsply theCharVar;
P1324();
P17();
P570();
return;