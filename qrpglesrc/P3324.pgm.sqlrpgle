**free

ctl-opt dftactgrp(*no);

dcl-pi P3324;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2878.rpgleinc'
/copy 'qrpgleref/P3243.rpgleinc'
/copy 'qrpgleref/P579.rpgleinc'

dcl-ds T478 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T478 FROM T478 LIMIT 1;

theCharVar = 'Hello from P3324';
dsply theCharVar;
P2878();
P3243();
P579();
return;