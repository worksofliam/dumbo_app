**free

ctl-opt dftactgrp(*no);

dcl-pi P4863;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4339.rpgleinc'
/copy 'qrpgleref/P2199.rpgleinc'
/copy 'qrpgleref/P3621.rpgleinc'

dcl-ds T100 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T100 FROM T100 LIMIT 1;

theCharVar = 'Hello from P4863';
dsply theCharVar;
P4339();
P2199();
P3621();
return;