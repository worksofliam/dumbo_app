**free

ctl-opt dftactgrp(*no);

dcl-pi P4655;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P1798.rpgleinc'
/copy 'qrpgleref/P3941.rpgleinc'

dcl-ds T1738 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1738 FROM T1738 LIMIT 1;

theCharVar = 'Hello from P4655';
dsply theCharVar;
P255();
P1798();
P3941();
return;