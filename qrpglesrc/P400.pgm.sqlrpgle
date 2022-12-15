**free

ctl-opt dftactgrp(*no);

dcl-pi P400;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'

dcl-ds T1167 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1167 FROM T1167 LIMIT 1;

theCharVar = 'Hello from P400';
dsply theCharVar;
P54();
P163();
P224();
return;