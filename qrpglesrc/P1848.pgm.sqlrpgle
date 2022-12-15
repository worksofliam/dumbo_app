**free

ctl-opt dftactgrp(*no);

dcl-pi P1848;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P197.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P1430.rpgleinc'

dcl-ds T409 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T409 FROM T409 LIMIT 1;

theCharVar = 'Hello from P1848';
dsply theCharVar;
P197();
P161();
P1430();
return;