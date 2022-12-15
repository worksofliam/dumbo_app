**free

ctl-opt dftactgrp(*no);

dcl-pi P1635;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1408.rpgleinc'
/copy 'qrpgleref/P1005.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'

dcl-ds T604 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T604 FROM T604 LIMIT 1;

theCharVar = 'Hello from P1635';
dsply theCharVar;
P1408();
P1005();
P216();
return;