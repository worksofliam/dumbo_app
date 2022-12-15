**free

ctl-opt dftactgrp(*no);

dcl-pi P993;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P821.rpgleinc'
/copy 'qrpgleref/P197.rpgleinc'
/copy 'qrpgleref/P937.rpgleinc'

dcl-ds T296 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T296 FROM T296 LIMIT 1;

theCharVar = 'Hello from P993';
dsply theCharVar;
P821();
P197();
P937();
return;