**free

ctl-opt dftactgrp(*no);

dcl-pi P594;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'

dcl-ds T63 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T63 FROM T63 LIMIT 1;

theCharVar = 'Hello from P594';
dsply theCharVar;
P5();
P324();
P379();
return;