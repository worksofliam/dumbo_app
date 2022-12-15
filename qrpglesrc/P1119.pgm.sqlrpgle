**free

ctl-opt dftactgrp(*no);

dcl-pi P1119;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P922.rpgleinc'
/copy 'qrpgleref/P596.rpgleinc'
/copy 'qrpgleref/P461.rpgleinc'

dcl-ds T70 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T70 FROM T70 LIMIT 1;

theCharVar = 'Hello from P1119';
dsply theCharVar;
P922();
P596();
P461();
return;