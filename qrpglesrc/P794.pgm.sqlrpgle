**free

ctl-opt dftactgrp(*no);

dcl-pi P794;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P364.rpgleinc'
/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'

dcl-ds T635 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T635 FROM T635 LIMIT 1;

theCharVar = 'Hello from P794';
dsply theCharVar;
P364();
P201();
P118();
return;