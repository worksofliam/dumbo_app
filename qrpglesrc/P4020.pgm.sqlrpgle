**free

ctl-opt dftactgrp(*no);

dcl-pi P4020;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1170.rpgleinc'
/copy 'qrpgleref/P1905.rpgleinc'
/copy 'qrpgleref/P3185.rpgleinc'

theCharVar = 'Hello from P4020';
dsply theCharVar;
P1170();
P1905();
P3185();
return;