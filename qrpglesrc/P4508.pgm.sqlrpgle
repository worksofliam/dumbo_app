**free

ctl-opt dftactgrp(*no);

dcl-pi P4508;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3114.rpgleinc'
/copy 'qrpgleref/P4387.rpgleinc'
/copy 'qrpgleref/P1669.rpgleinc'

dcl-ds T1601 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1601 FROM T1601 LIMIT 1;

theCharVar = 'Hello from P4508';
dsply theCharVar;
P3114();
P4387();
P1669();
return;