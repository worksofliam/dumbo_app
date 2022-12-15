**free

ctl-opt dftactgrp(*no);

dcl-pi P817;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P650.rpgleinc'
/copy 'qrpgleref/P761.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'

dcl-ds T387 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T387 FROM T387 LIMIT 1;

theCharVar = 'Hello from P817';
dsply theCharVar;
P650();
P761();
P67();
return;