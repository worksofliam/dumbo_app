**free

ctl-opt dftactgrp(*no);

dcl-pi P3311;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P745.rpgleinc'
/copy 'qrpgleref/P1678.rpgleinc'

dcl-ds T1665 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1665 FROM T1665 LIMIT 1;

theCharVar = 'Hello from P3311';
dsply theCharVar;
P115();
P745();
P1678();
return;