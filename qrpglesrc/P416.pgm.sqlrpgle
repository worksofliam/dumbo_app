**free

ctl-opt dftactgrp(*no);

dcl-pi P416;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'

dcl-ds T1798 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1798 FROM T1798 LIMIT 1;

theCharVar = 'Hello from P416';
dsply theCharVar;
P98();
P324();
P266();
return;