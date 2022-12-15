**free

ctl-opt dftactgrp(*no);

dcl-pi P626;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P464.rpgleinc'
/copy 'qrpgleref/P586.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds T59 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T59 FROM T59 LIMIT 1;

theCharVar = 'Hello from P626';
dsply theCharVar;
P464();
P586();
P79();
return;