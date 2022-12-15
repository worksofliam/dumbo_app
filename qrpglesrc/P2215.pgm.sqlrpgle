**free

ctl-opt dftactgrp(*no);

dcl-pi P2215;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2209.rpgleinc'
/copy 'qrpgleref/P1558.rpgleinc'
/copy 'qrpgleref/P2121.rpgleinc'

dcl-ds T718 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T718 FROM T718 LIMIT 1;

theCharVar = 'Hello from P2215';
dsply theCharVar;
P2209();
P1558();
P2121();
return;