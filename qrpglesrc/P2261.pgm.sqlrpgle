**free

ctl-opt dftactgrp(*no);

dcl-pi P2261;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P449.rpgleinc'
/copy 'qrpgleref/P1400.rpgleinc'
/copy 'qrpgleref/P1945.rpgleinc'

dcl-ds T1789 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1789 FROM T1789 LIMIT 1;

theCharVar = 'Hello from P2261';
dsply theCharVar;
P449();
P1400();
P1945();
return;