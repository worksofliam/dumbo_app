**free

ctl-opt dftactgrp(*no);

dcl-pi P2755;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1840.rpgleinc'
/copy 'qrpgleref/P1545.rpgleinc'
/copy 'qrpgleref/P723.rpgleinc'

dcl-ds T387 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T387 FROM T387 LIMIT 1;

theCharVar = 'Hello from P2755';
dsply theCharVar;
P1840();
P1545();
P723();
return;