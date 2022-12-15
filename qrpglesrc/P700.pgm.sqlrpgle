**free

ctl-opt dftactgrp(*no);

dcl-pi P700;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P545.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P453.rpgleinc'

dcl-ds T56 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T56 FROM T56 LIMIT 1;

theCharVar = 'Hello from P700';
dsply theCharVar;
P545();
P265();
P453();
return;