**free

ctl-opt dftactgrp(*no);

dcl-pi P1119;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P525.rpgleinc'
/copy 'qrpgleref/P712.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'

dcl-ds T1149 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1149 FROM T1149 LIMIT 1;

theCharVar = 'Hello from P1119';
dsply theCharVar;
P525();
P712();
P105();
return;