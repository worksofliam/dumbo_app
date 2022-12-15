**free

ctl-opt dftactgrp(*no);

dcl-pi P1168;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P416.rpgleinc'

dcl-ds T412 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T412 FROM T412 LIMIT 1;

theCharVar = 'Hello from P1168';
dsply theCharVar;
P45();
P252();
P416();
return;