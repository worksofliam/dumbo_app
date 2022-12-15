**free

ctl-opt dftactgrp(*no);

dcl-pi P626;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P540.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'

dcl-ds T67 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T67 FROM T67 LIMIT 1;

theCharVar = 'Hello from P626';
dsply theCharVar;
P246();
P540();
P67();
return;