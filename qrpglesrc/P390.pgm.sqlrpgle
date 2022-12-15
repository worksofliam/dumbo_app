**free

ctl-opt dftactgrp(*no);

dcl-pi P390;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P269.rpgleinc'
/copy 'qrpgleref/P227.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'

dcl-ds T242 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T242 FROM T242 LIMIT 1;

theCharVar = 'Hello from P390';
dsply theCharVar;
P269();
P227();
P72();
return;