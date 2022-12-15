**free

ctl-opt dftactgrp(*no);

dcl-pi P544;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P475.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds T411 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T411 FROM T411 LIMIT 1;

theCharVar = 'Hello from P544';
dsply theCharVar;
P475();
P72();
P23();
return;