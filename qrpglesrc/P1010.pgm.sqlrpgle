**free

ctl-opt dftactgrp(*no);

dcl-pi P1010;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P936.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'

dcl-ds T612 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T612 FROM T612 LIMIT 1;

theCharVar = 'Hello from P1010';
dsply theCharVar;
P936();
P299();
P45();
return;