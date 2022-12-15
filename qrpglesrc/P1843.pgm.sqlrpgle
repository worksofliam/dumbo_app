**free

ctl-opt dftactgrp(*no);

dcl-pi P1843;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P650.rpgleinc'
/copy 'qrpgleref/P1255.rpgleinc'
/copy 'qrpgleref/P1449.rpgleinc'

dcl-ds T505 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T505 FROM T505 LIMIT 1;

theCharVar = 'Hello from P1843';
dsply theCharVar;
P650();
P1255();
P1449();
return;