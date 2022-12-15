**free

ctl-opt dftactgrp(*no);

dcl-pi P2100;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1685.rpgleinc'
/copy 'qrpgleref/P752.rpgleinc'
/copy 'qrpgleref/P1669.rpgleinc'

dcl-ds T1159 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1159 FROM T1159 LIMIT 1;

theCharVar = 'Hello from P2100';
dsply theCharVar;
P1685();
P752();
P1669();
return;