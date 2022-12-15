**free

ctl-opt dftactgrp(*no);

dcl-pi P1431;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P656.rpgleinc'
/copy 'qrpgleref/P217.rpgleinc'
/copy 'qrpgleref/P580.rpgleinc'

dcl-ds T230 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T230 FROM T230 LIMIT 1;

theCharVar = 'Hello from P1431';
dsply theCharVar;
P656();
P217();
P580();
return;