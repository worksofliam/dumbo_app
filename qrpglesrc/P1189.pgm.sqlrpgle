**free

ctl-opt dftactgrp(*no);

dcl-pi P1189;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P650.rpgleinc'
/copy 'qrpgleref/P1169.rpgleinc'
/copy 'qrpgleref/P1176.rpgleinc'

dcl-ds T1798 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1798 FROM T1798 LIMIT 1;

theCharVar = 'Hello from P1189';
dsply theCharVar;
P650();
P1169();
P1176();
return;